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
            $this->connection_result = mysql_connect($this->config['db_host'], $this->config['db_user'], $this->config['db_password'])
		or die("Подключение не совершено: " . mysql_error());
            mysql_select_db($this->config['db_name'], $this->connection_result) or die("Не выполнен выбор БД: " . mysql_error());
            return $this->connection_result;
	}

	public function DB_close_connect(){
            return mysql_close($this->connection_result);
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
		$query = mysql_query("INSERT INTO `".$this->config['db_name']."`.`news` 
			(publication_date,
			upload_date,
			title,
			description,
			img_url,
			url) VALUES(
			'".date('Y-m-d H:i:s', strtotime($rss->pubDate))."',
			NOW(),
			'".mysql_real_escape_string($rss->title)."',
			'".mysql_real_escape_string($rss->description)."',
			'".mysql_real_escape_string($rss->enclosure["url"])."',
			'".mysql_real_escape_string($rss->link)."');");
			}
                if (!$query){
			die('Неверный запрос: ' . mysql_error());
		}       
        }
        
	// Метод для получения Списка новостей из БД
	public function Get_News(){
		$query = mysql_query('SELECT n.*, count(c.news_id = n.id) AS num_comments FROM news AS n LEFT JOIN comments AS c ON n.id = c.news_id GROUP BY n.id ORDER BY n.publication_date DESC');
                if (!$query){
			die('Неверный запрос: ' . mysql_error());
		}
                while ($row = mysql_fetch_assoc($query)) {
                    $array_results[] = $row;
                }  
		return $array_results;
	}
        
        public function Get_publication($pub_id){
            $query = mysql_query('SELECT * FROM news WHERE id = '.$pub_id);
                if (!$query){
			die('Неверный запрос: ' . mysql_error());
		}
                while ($row = mysql_fetch_assoc($query)) {
                    $array_results[] = $row;
                }  
		return $array_results[0];
        }
}
?>