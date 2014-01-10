<?php
/* @var $this ProjectController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Projects',
);

$this->menu=array(
	array('label'=>'List Project', 'url'=>array('index')),
	array('label'=>'Create Project', 'url'=>array('create')),
	array('label'=>'Update Project', 'url'=>array('update','id'=>$model->id)),
	array('label'=>'Delete Project', 'url'=>'#','linkOptions'=>array(
													'submit'=>array('delete','id'=>$model->id),
													'confirm'=>'Are you sure to delete this item?',
													)),
	array('label'=>'Manage Project', 'url'=>array('admin')),
	array('label'=>'Create Issue', 'url'=>array('issue/create','pid'=>$model->id)),
);
?>

<h1>Projects</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
