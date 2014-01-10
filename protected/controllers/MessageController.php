<?php
class MessageController extends Controller
{
	public function actionHelloWorld()
	{
		$theContent = 'this is a test content!';
		$this->render('helloWorld',array('content'=>$theContent));
	}

	public function actionIndex()
	{
		$this->render('index');
	}
}
?>