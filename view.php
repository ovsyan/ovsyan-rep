<?php
	require_once 'controller.php';

    class view{	
	public $html;
        
        //Метод генерации списка новостей в виде html кода 
        public function Generate_News($data){
            $html = "<title>Images of the day</title>"
                    . "<table>";
            $html .= "<tr>
			<th>ID</th>
			<th>Actions</th>
			<th>Title</th>
			<th>Publication date</th>
			<th>Upload date</th>
			<th>Comments</th>
            </tr>";
            foreach($data as $row){
                $html .= "<tr>";
		$html .=   "<td>".$row["id"]."</td>"
                         . "<td>Edit or Remove</td>"
                         . "<td><a href = '?pub_id=".$row['id']."'>".$row["title"]."</a></td>"
                         . "<td><a href = '".$row["url"]."'>".$row["publication_date"]."</a></td>"
                         . "<td>".$row["upload_date"]."</td>"
                         . "<td>".$row["num_comments"]."</td>";	
                $html .= "</tr>";
            }
            $html .= "</table>";
            return $html;
        }
        
        // Метод генерации конкретной публикации из списка в виде html кода 
        public function Generate_publication($data){
            $html = "<title>".$data['title']."</title>";
            $html = "<div class = 'container'>"
                        . "<h3>".$data['title']."</h3>"
                        . "<div id = 'pub'>"
                        . $data['description']
                        . "</div><img src = '".$data['img_url']."'/>"
                        . "<div id = 'source'><a href = ".$data['url'].">Источник</a></div>"
                    . "</div>";
            return $html;
        }
        
        //Метод генерации списка коментариев в виде html кода 
        public function Generate_comments($data){
            $html = "<div class = 'container'>"
                    . "<h3>Комментарии</h3>";
            if(isset($data)){
                foreach($data as $comment){
                    $html .= "<hr/><div class = 'comment'>"
                            . "<div class = 'comment-info'>"
                                . "<div class = 'comment-author'>".$comment['username']."</div>"
                                . "<div class = 'comment-time'>".$comment['time']."</div>"
                            . "</div>"
                            . "<div class = 'comment-text'>".$comment['text']."</div>"
                            . "</div>"
                            . "<hr/>";

                }
            }
            $html .= "</div>";
            return $html;
        }
    }
?>