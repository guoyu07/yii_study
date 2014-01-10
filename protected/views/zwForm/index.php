<?php
/* @var $this ZwFormController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Zw Forms',
);

$this->menu=array(
	array('label'=>'Create ZwForm', 'url'=>array('create')),
	array('label'=>'Manage ZwForm', 'url'=>array('admin')),
);
?>

<h1>Zw Forms</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
