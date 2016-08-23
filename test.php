<?php
        // отладочный файл
        // На данный момент является загручзиком RSS в пустую БД. 
        // Удалить по завершению.

        require_once("model.php");
	$rssSource = "https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss";
	$rss = simplexml_load_file($rssSource);
	
	foreach($rss->channel->item as $item){
		print_r("<a href = '".$item->guid."'>".$item->title."</a>");
		print_r($item->enclosure["url"]);
                print('<br/><br/>');
	}
       
        $oop = new Model();
        $oop->DB_connect();
        $oop->RSS_write();
        /*
        var_dump($oop->Get_all());
	 */
     
?>