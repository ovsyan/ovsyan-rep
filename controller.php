<?php
    require_once 'view.php';
    require_once 'model.php';
    
    class Controller{
        
        // Точка входа в придожение.
        // (Требует добавления роутинга)
        public function Start(){
            $model = new Model();
            $model->DB_connect();
            
            //Отсюда начать обработку путей. Далее default
            $data = $model->Get_all();
            
            $view = new View();
            $model->DB_close_connect();
            return $view->GenerateNews($data);
        }
    }
?>