<?php
    require_once 'view.php';
    require_once 'model.php';
    
    class Controller{
        
        // Точка входа в придожение.
        public function Start(){
            $model = new Model();
            $model->DB_connect();
            $view = new View();
            
            // Начало роутинга. 
            // Т.к. на данный момент система зависит только от одного параметра (pub_id), для простоты роутинга используется if.
            // В случае масштабирования планируется переход на switch/case, который на данный момент не имеет смысла.
            if(isset($_GET['pub_id'])){
               $data = $model->Get_publication($_GET['pub_id']);
               $finalView = $view->Generate_publication($data);
            }
            else{ 
                $data = $model->Get_News();
                $finalView = $view->Generate_News($data);
            }
            
            $model->DB_close_connect();
            return $finalView;
        }
    }
?>