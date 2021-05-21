pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract covidVaccineRegister {

  // define the struct VaccinationRecord
  struct VaccinationRecord {
    string name;
    string surname;
    string vaccinationDate;
    string vaccinationName;
    string vaccinationPlace;
    address added_by;
  }

  // define the array of users
  VaccinationRecord[] public vaccinationRecords;

  function createVaccinationRecord(string calldata _name, string calldata _surname, string calldata _vaccinationDate, string calldata _vaccinationName, string calldata _vaccinationPlace) external returns(uint){
    // get an instance of a VaccinationRecord using the input variables and push into the array of vaccinationRecords, returns the id
    uint id = vaccinationRecords.push( VaccinationRecord(_name, _surname, _vaccinationDate, _vaccinationName, _vaccinationPlace, msg.sender)) - 1;
    
    // return the user id
    return id;
  }

  function getNumberOfVaccinations() external view returns(uint) {
    // return the length of the vaccinationRecords array
    return vaccinationRecords.length;
  }

  function getVaccinationRecord(uint index) external view returns(VaccinationRecord memory) {

    // return a vaccination record from an array

     return vaccinationRecords[index];

uint len = vaccinationRecords.length;

     if(index>0 && index<len)

     {

         return vaccinationRecords[index];

     }

     revert("Invalid index");
  }
} 