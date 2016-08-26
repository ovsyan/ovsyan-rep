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
            if(!empty($_GET)){
                foreach ($_GET as $key => $value) {
                    switch ($key):
                        case('comment'):
                            $comment_data = $model->Insert_comment(1, $_GET['pub_id'], $value);// 1 - id пользователя. Без системы регистрации выполняет роль заглушки
                        break;
                        case('pub_id'):
                            $data = $model->Get_publication($value);
                            $finalView = $view->Generate_publication($data);
                            $dataComments = $model->Get_comments($value);
                            $finalView .= $view->Generate_comments($dataComments);
                        break;
                        case('remove'):
                            $data = $model->Del_publication($value);
                            $data = $model->Get_News();
                            $finalView = $view->Generate_News($data);
                        break;
                        case('edit'):
                            $data = $model->Get_publication($value);
                            $finalView = $view->Edit_publication_form($data);
                        break;
                        case('new-description'):
                            $data = $model->Update_publication($_GET['id'],$value);
                            $data = $model->Get_News();
                            $finalView = $view->Generate_News($data);
                        break;
                    endswitch;
                }
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