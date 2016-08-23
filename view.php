<?php
	require_once 'controller.php';

    class view{	
	public $html;
        
        //Метод генерации списка новостей в виде html кода 
        public function GenerateNews($data){
            
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
                         . "<td>".$row["title"]."</td>"
                         . "<td><a href='".$row["url"]."'>".$row["publication_date"]."</a></td>"
                         . "<td>".$row["upload_date"]."</td>"
                         . "<td>".$row["num_comments"]."</td>";	
                $html .= "</tr>";
            }
            $html .= "</table>";
            return $html;
        }
    }
?>