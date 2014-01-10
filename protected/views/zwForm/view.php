<?php
/* @var $this ZwFormController */
/* @var $model ZwForm */

$this->breadcrumbs=array(
	'Zw Forms'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List ZwForm', 'url'=>array('index')),
	array('label'=>'Create ZwForm', 'url'=>array('create')),
	array('label'=>'Update ZwForm', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete ZwForm', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ZwForm', 'url'=>array('admin')),
);
?>

<h1>View ZwForm #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'title',
		'content',
		'public_date',
	),
)); ?>
