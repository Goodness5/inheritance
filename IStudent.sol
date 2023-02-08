// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

struct Data{
        string name;
        uint Id;
        uint age;
        string gender;
        bool status;
    }

interface IStudents{
    function registerStudent(string calldata _name, address student, uint _age, string calldata _gender) external;

     function getStudent(address student) external view returns(Data memory _data);


     function DeleteStudent(address student) external;
}