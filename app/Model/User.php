<?php
App::uses('AppModel', 'Model');
/**
 * User Model
 *
 */
class User extends AppModel {

/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'name' => array(
			'notEmpty' => array(
				'rule' => array('notEmpty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'active' => array(
			'boolean' => array(
				'rule' => array('boolean'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
        
        
        /*
         * get Active people
         */
        
        public function getActive() { 
            $option = array( 
                'conditions' => array('User.active' => 1), 
                'order' => array('User.created asc'), 
            ); 
            return $this->find('all', $option); 
        }
        
        /*
         * get leaders
         */
       
        public function getLeaders() { 
            $option = array( 
                'conditions' => array('User.leader' => 1,
                                    'User.active' =>1
                                    ), 
                'order' => array('User.created asc'), 
            ); 
            return $this->find('all', $option); 
        }
        
        /*
         * get members
        */
        
        public function getMembers(){
            $option = array( 
                'conditions' => array('User.leader' => 0,
                                       'User.active' =>1
                                       ), 
                'order' => array('User.created asc'), 
            ); 
            return $this->find('all', $option); 
        }
        
        /*
         * random the members 
        */
        
        public function getMemberRand(){
            $members = $this->getMembers();    
            shuffle($members);
            return $members;
        }
        
       
        
        /*
         * equel distribution of team members
         */

        public function createTeam(){
            
            $leaders = $this->getLeaders();
            $randmembers = $this->getMemberRand();
            $numberOfmembers= sizeof($randmembers); 
            $numberOfleaders = sizeof($leaders);
            shuffle($leaders);
            $result = array();
            $i = 0;
            foreach ($leaders as $leader) {
               $result[$i]['leader'] = $leader['User']['name'];
               $i++;          
            }             
            $j = 0;
            while ($j<$numberOfmembers){
                for ($i = 0; $i <$numberOfleaders; $i++){
                    
                    if ($j >= $numberOfmembers){
                        $result[$i]['members'][] = "";
                    } else {
                        $result[$i]['members'][] = $randmembers[$j]['User']['name'];                    
                    }
                    $j++;
                }
            }             
        return $result;
        }
        
        /*
         * History Display
         */
        
}