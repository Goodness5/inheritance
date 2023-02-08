// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;


import {IStudents} from "./IStudent.sol";

contract Chairman{

    address[] staffs;
    address Admin;  
    IStudents studentDetail; 


   constructor(address _studentDetails){
        Admin = msg.sender;
        studentDetail =IStudents( _studentDetails);
    }

    modifier onlyOwner(){
        require(msg.sender == Admin, "Not Admin");
        _;

    }


    function addStaff(address _staff) external onlyOwner{
        staffs.push(_staff);
    }

    function Register(string memory _name, address student, uint _age, string memory _gender) external {
        studentDetail.registerStudent(_name, student, _age, _gender);

    }
    fallback() external payable{}

    receive() payable external{}





}