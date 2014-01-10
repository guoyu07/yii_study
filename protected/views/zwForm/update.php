<?php
/* @var $this ZwFormController */
/* @var $model ZwForm */

$this->breadcrumbs=array(
	'Zw Forms'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ZwForm', 'url'=>array('index')),
	array('label'=>'Create ZwForm', 'url'=>array('create')),
	array('label'=>'View ZwForm', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage ZwForm', 'url'=>array('admin')),
);
?>

<h1>Update ZwForm <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>