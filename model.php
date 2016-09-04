<?php
Class Model{
        
	private $config = array(
		'db_user' => 'root',
		'db_password' => '',
		'db_host' => 'localhost',
		'db_name' => 'gsoft_test'
	);
        
        private $rssSource = "https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss";

	public function DB_connect(){
            $this->connection_result = mysqli_connect($this->config['db_host'], $this->config['db_user'], $this->config['db_password'],$this->config['db_name'])
		or die("Подключение не совершено: " . mysqli_error());
            return $this->connection_result;
	}

	public function DB_close_connect(){
            return mysqli_close($this->connection_result);
	}
	
        //Метод извлечения данных из RSS с помощью SimpleXML
	public function RSS_get(){
            $rss = simplexml_load_file($this->rssSource);
            return $rss->channel->item;
	}
	
        //Метод записи полученных данных в БД.
        //(Требует рефакторинга на случай удаления записи)
        public function RSS_write(){
            foreach($this->RSS_get() as $rss){
		$query = mysqli_query($this::DB_connect(),"INSERT INTO `".$this->config['db_name']."`.`news` 
			(publication_date,
			upload_date,
			title,
			description,
			img_url,
			url) VALUES(
			'".date('Y-m-d H:i:s', strtotime($rss->pubDate))."',
			NOW(),
			'".mysqli_real_escape_string($this::DB_connect(),$rss->title)."',
			'".mysqli_real_escape_string($this::DB_connect(),$rss->description)."',
			'".mysqli_real_escape_string($this::DB_connect(),$rss->enclosure["url"])."',
			'".mysqli_real_escape_string($this::DB_connect(),$rss->link)."')"
                        . "ON DUPLICATE KEY UPDATE "
                        . "publication_date = '".date('Y-m-d H:i:s', strtotime($rss->pubDate))."';");
			}
                if (!$query){
			die('Неверный запрос: ' . mysqli_error());
		}       
        }
        
	// Метод для получения Списка новостей из БД
	public function Get_News(){
		$query = mysqli_query($this::DB_connect(),'SELECT n.id, n.title, n.url, n.publication_date, n.upload_date, count(c.news_id = n.id) AS num_comments FROM news AS n LEFT JOIN comments AS c ON n.id = c.news_id GROUP BY n.id ORDER BY n.publication_date DESC');
                if (!$query){
			die('Неверный запрос: ' . mysqli_error());
		}
                while ($row = mysqli_fetch_assoc($query)) {
                    $array_results[] = $row;
                }  
		return $array_results;
	}
        
        public function Get_publication($pub_id){
            $query = mysqli_query($this::DB_connect(),'SELECT id, title, description, url, img_url FROM news WHERE id = '.$pub_id);
                if (!$query){
			die('Неверный запрос: ' . mysqli_error());
		}
                while ($row = mysqli_fetch_assoc($query)) {
                    $array_results[] = $row;
                }  
		return $array_results[0];
        }
        
        public function Get_comments($pub_id){
            $query = mysqli_query($this::DB_connect(),'SELECT c.*, u.username FROM comments AS c LEFT JOIN users AS u ON c.user_id = u.id WHERE c.news_id = '.$pub_id);
            if (!$query){
		die('Неверный запрос: ' . mysqli_error());
            }
            $array_results = array();
            while ($row = mysqli_fetch_assoc($query)) {
                $array_results[] = $row;
            }  
            return $array_results;
        }
        
        public function Insert_comment($user,$pub_id ,$data){
            $query = mysqli_query($this::DB_connect(),"INSERT INTO `".$this->config['db_name']."`.`comments` (news_id,user_id,text,time) "
                    . "VALUES ("
                    . "'". $pub_id ."',"
                    . "'". $user ."',"
                    . "'". mysqli_real_escape_string($this::DB_connect(),$data)."',"
                    . "NOW());");
            if (!$query){
		die('Неверный запрос: ' . mysqli_error());
            }
        }
        
        public function Update_publication($id,$data){
            $query = mysqli_query($this::DB_connect(),'UPDATE news SET news.title = "'.mysqli_real_escape_string($this::DB_connect(),$data).'" WHERE news.id = '.$id);
            if (!$query){
		die('Неверный запрос: ' . mysqli_error());
            }
        }
        
        public function Del_publication($pub_id){
            $query = mysqli_query($this::DB_connect(),'DELETE n.*,c.* FROM news AS n LEFT JOIN comments AS c ON c.news_id = n.id WHERE n.id = '.$pub_id);
            if (!$query){
		die('Неверный запрос: ' . mysqli_error());
            }
        }
}
?>