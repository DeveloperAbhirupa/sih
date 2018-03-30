pragma solidity ^0.4.16;


contract Work {

    address public producer;

    uint public reward;
    uint public expRequirment;
    uint public expReward;

    string public task;
    
    bool public assignedConsumer = false;
    address public consumer; 

    bool public submittedTask = false;
    bool public completedTask = false;

    /*
    *@Work
    *Constructor for the contract.
    *
    *_reward: reward for the task
    *_expReward: Reward gained for performing the task
    *_expRequirment: Minimum requirment for the task
    */
    function Work(uint _reward,uint _expReward, uint _expRequirment){
        producer = msg.sender;
        reward = _reward;
        expRequirment = _expRequirment;
        expReward = _expReward;
    }

    function applyForTask(){

    }

    /*
    *@selectWorker
    *Tells the consumer that the he/she has been selected 
    *
    *_consumer is the address of the consumer selected
    */
    function selectWorker(address _consumer){
        consumer = _consumer;
        submittedTask = true;
    }

    /*
    *@submit
    *Submit asks the producer to evaluate the task
    *
    */
    function submit(){
        submittedTask = true;
        //Submit the task
    } 

    /*
    *@accept
    *The work calls this to indicate that the work has been completed
    *and the reward should be given.
    *
    */
    function accept(){
        completedTask = true;
        //Distribute reward
    }

}
