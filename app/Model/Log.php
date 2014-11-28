<?php

App::uses('AppModel', 'Model');

/**
 * Log Model
 *
 */
class Log extends AppModel {

    /**
     * Validation rules
     *
     * @var array
     */
    //public $hasManny = array('User');

    public $validate = array(
        'log' => array(
            'notEmpty' => array(
                'rule' => array('notEmpty'),
            //'message' => 'Your custom message here',
            //'allowEmpty' => false,
            //'required' => false,
            //'last' => false, // Stop validation after this rule
            //'on' => 'create', // Limit validation to 'create' or 'update' operations
            ),
        ),
    );

    public function saveLog($log) {
        $data = array(
            'Log' => array(
                'log' => $log
            )
        );
        $this->save($data);
    }

    public function getlog() {
        $alldata = $this->find("all");
        foreach ($alldata as $itemlogs) {
            $unitemlogs[] = unserialize($itemlogs['Log']['log']);
        }
        return $unitemlogs;
    }

}
