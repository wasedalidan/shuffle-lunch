<div class="users index">
	<h2><?php echo __('Users'); ?></h2>
        <h2><?php echo __("シャッフルランチツール"); ?></h2>
        <!--<?php print_r($lunchteams);?>-->
        <table>
	<tbody>
	<?php foreach ($lunchteams as $team): ?>
	<tr>
            <td><?php echo h($team['leader']); ?></td>
            
            <?php foreach ($team['members'] as $person): ?>
            <td><?php echo h($person); ?></td>
            <?php endforeach; ?>
	</tr>
        <?php endforeach; ?>
        
	</tbody>
        </table>
        <?php echo $this->Html->link(__('Submit'), array('action' => 'submit')); ?>
       
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New User'), array('action' => 'add')); ?></li>
                <li><?php echo $this->Html->link(__('Active'), array('action' => 'active')); ?></li>
                <li><?php echo $this->Html->link(__('Shuffle'), array('action' => 'lunch')); ?></li> 
                <li><?php echo $this->Html->link(__('History'), array('controller' => 'logs','action' => 'index')); ?></li>
                
        </ul>
</div>

