<?php
/* @var $this ZwFormController */
/* @var $model ZwForm */

$this->breadcrumbs=array(
	'Zw Forms'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ZwForm', 'url'=>array('index')),
	array('label'=>'Manage ZwForm', 'url'=>array('admin')),
);
?>

<h1>Create ZwForm</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>