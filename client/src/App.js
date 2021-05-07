import './App.css';
import { useState } from "react";
import Axios from 'axios';
import Popup from "./Popup.js";
import StatePopup from "./StatePopup.js";

function App() {
  //for adding
  const [id, setId] = useState(0);
  const [name, setName] = useState("");
  const [housing, setHousing] = useState("");
  const [state, setState] = useState("");
  const [major, setMajor] = useState("");
  const [dining, setDining] = useState("");
  const [club, setClub] = useState("");
  const [gym, setGym] = useState("");
  const [covidDate, setCovidDate] = useState(new Date());
  const [contact, setContact] = useState("false");

  //for updating
  const [newId, setNewId] = useState(0);
  const [newDining, setNewDining] = useState("");
  const [newClub, setNewClub] = useState("");
  const [newGym, setNewGym] = useState("");
  const [newContact, setNewContact] = useState("false");

  //for popupbutton
  const [buttonPopup, setButtonPopup] = useState(false);

  //for displaying
  const [studentList, setStudentList] = useState([]);

  //for states
  const [stateList, setStateList] = useState([]);
  const [stateButton, setStateButton] = useState(false);

  const addStudent = () => {
    Axios.post('http://localhost:3001/create', {
      id: id, 
      name: name, 
      housing: housing, 
      state: state, 
      major: major, 
      dining: dining, 
      club: club, 
      gym: gym, 
      covidDate: covidDate, 
      contact: contact
    }).then(() => {
      setStudentList([
        ...studentList,
        {
          id: id, 
          name: name, 
          housing: housing, 
          state: state, 
          major: major, 
          dining: dining, 
          club: club, 
          gym: gym, 
          covidDate: dateFormat(covidDate), 
          contact: contact
        },
      ]);
    });
  }

  const getStudent = () => {
    Axios.get("http://localhost:3001/student").then((response) => {
      setStudentList(response.data);
    });
  }

  const updateStudent = () => {
    Axios.put("http://localhost:3001/update", {
      id: newId,
      dining: newDining, 
      club: newClub, 
      gym: newGym, 
      contact: newContact
    }).then((response) => {
      setStudentList([
        ...studentList,
        {
          id: newId, 
          name: name, 
          housing: housing, 
          state: state, 
          major: major, 
          dining: newDining, 
          club: newClub, 
          gym: newGym, 
          covidDate: dateFormat(covidDate), 
          contact: newContact
        },
      ]);
    });
  }

  const deleteStudent = (id) => {
    Axios.delete(`http://localhost:3001/delete/${id}`).then((response) => {
      setStudentList(
        studentList.filter((val) => {
          return val.id != id;
        })
      );
    });
  };

  const getState = (id) => {
    Axios.get("http://localhost:3001/getState").then((response) => {
      setStateList(response.data);
    });
    setStateButton(true);
  };

  const dateFormat = (date) => {
    var newDate = new Date(date)
    var year = newDate.getFullYear();
    var month = newDate.getMonth();
    var day = newDate.getDate().toString();
    
    return month + '/' + day + '/' + year;
  }

  return (
    <div className="App">
      <div className="form">
        <header>Click "Refresh" after updating</header>
        <label>Northeastern Student ID </label>
        <input type="number" onChange = { (event) => {
          setId(event.target.value);
        }}/>
        <label>Name</label>
        <input type="text" onChange = { (event) => {
          setName(event.target.value);
        }}/> 
        <label>Housing</label>
        <select className = "Housing"  onChange = { (event) => {
          setHousing(event.target.value);
        }}>
          <option value="">Please Select</option>
          <option value="Dorm Double">Dorm Double</option>
          <option value="Dorm Single">Dorm Single</option>
          <option value="Dorm Suite">Dorm Suite</option>
          <option value="LP Double">LP Double</option>
          <option value="LP Single">LP Single</option>
          <option value="LP Suite">LP Suite</option>
          <option value="Off Campus Double">Off Campus Double</option>
          <option value="Off Campus Single">Off Campus Single</option>
          <option value="Off Campus Suite">Off Campus Suite</option>
        </select>   
        <label>Homestate</label>
        <select className = "Homestate"  onChange = { (event) => {
          setState(event.target.value);
        }}>
          <option value="">Please Select</option>
          <option value="Alabama">Alabama</option>
          <option value="Alaska">Alaska</option>
          <option value="Arizona">Arizona</option>
          <option value="Arkansas">Arkansas</option>
          <option value="California">California</option>
          <option value="Colorado">Colorado</option>
          <option value="Connecticut">Connecticut</option>
          <option value="Delaware">Delaware</option>
          <option value="Florida">Florida</option>
          <option value="Georgia">Georgia</option>
          <option value="Hawaii">Hawaii</option>
          <option value="Idaho">Idaho</option>
          <option value="Illinois">Illinois</option>
          <option value="Indiana">Indiana</option>
          <option value="Iowa">Iowa</option>
          <option value="Kansas">Kansas</option>
          <option value="Kentucky">Kentucky</option>
          <option value="Louisiana">Louisiana</option>
          <option value="Maine">Maine</option>
          <option value="Maryland">Maryland</option>
          <option value="Massachusetts">Massachusetts</option>
          <option value="Michigan">Michigan</option>
          <option value="Minnesota">Minnesota</option>
          <option value="Mississippi">Mississippi</option>
          <option value="Missouri">Missouri</option>
          <option value="Montana">Montana</option>
          <option value="Nebraska">Nebraska</option>
          <option value="Nevada">Nevada</option>
          <option value="New Hampshire">New Hampshire</option>
          <option value="New Jersey">New Jersey</option>
          <option value="New Mexico">New Mexico</option>
          <option value="New York">New York</option>
          <option value="North Carolina">North Carolina</option>
          <option value="North Dakota">North Dakota</option>
          <option value="Ohio">Ohio</option>
          <option value="Oklahoma">Oklahoma</option>
          <option value="Oregon">Oregon</option>
          <option value="Pennsylvania">Pennsylvania</option>
          <option value="Rhode Island">Rhode Island</option>
          <option value="South Carolina">South Carolina</option>
          <option value="South Dakota">South Dakota</option>
          <option value="Tennessee">Tennessee</option>
          <option value="Texas">Texas</option>
          <option value="Utah">Utah</option>
          <option value="Vermont">Vermont</option>
          <option value="Virginia">Virginia</option>
          <option value="Washington">Washington</option>
          <option value="West Virginia">West Virginia</option>
          <option value="Wisconsin">Wisconsin</option>
          <option value="Wyoming">Wyoming</option>
          <option value="Other">Other</option>
        </select> 
        <label>Major</label>
        <select className = "Major"  onChange = { (event) => {
          setMajor(event.target.value);
        }}>
          <option value="">Please Select</option>
          <option value="Arts, Media, and Design">Arts, Media, and Design</option>
          <option value="Business">Business</option>
          <option value="Computer Science">Computer Science</option>
          <option value="Engineering">Engineering</option>
          <option value="Health Science">Health Science</option>
          <option value="Law">Law</option>
          <option value="Science">Science</option>
          <option value="Social Science and Humanities">Social Science and Humanities</option>
        </select>
        <label>Dining Hall Preference</label>
        <select className = "Dining"  onChange = { (event) => {
          setDining(event.target.value);
        }}>
          <option value="">Please Select</option>
          <option value="Stetson East">Stetson East</option>
          <option value="International Village">International Village</option>
          <option value="Self cooking">Self cooking</option>
        </select> 
        <label>Club</label>
        <select className = "Club"  onChange = { (event) => {
          setClub(event.target.value);
        }}>
          <option value="">Please Select</option>
          <option value="Educational">Educational</option>
          <option value="Social">Social</option>
          <option value="Sports">Sports</option>
        </select>  
        <label>Gym Preference</label>
        <select className = "Gym"  onChange = { (event) => {
          setGym(event.target.value);
        }}>
          <option value="">Please Select</option>
          <option value="Marino">Marino</option>
          <option value="SquashBusters">SquashBusters</option>
          <option value="Do not go to gym">Do not go to gym</option>
        </select> 
        <label>COVID19 contraction date</label>
        <input type="date" onChange = { (event) => {
          setCovidDate(event.target.value);
        }}/> 
        <label>Have you been in contact with a carrier (type yes/no)</label>
        <select className = "Contact"  onChange = { (event) => {
          setContact(event.target.value);
        }}>
          <option value="">Please Select</option>
          <option value="Yes">Yes</option>
          <option value="No">No</option>
        </select> 
        <button onClick={addStudent}>Submit</button>
      </div>
      <div className="table">
        <button className = "Refresh" onClick={getStudent}>Refresh</button>
        <button className = "Edit" onClick = {() => setButtonPopup(true)}>Edit</button>
        <table className="studentTable">
          <thead>
            <tr>
              <th>Name</th>
              <th>Housing</th>
              <th><button onClick = {getState}>Homestate</button></th>
              <th>Major</th>
              <th>Dining Hall</th>
              <th>Club</th>
              <th>Gym Preference</th>
              <th>COVID19 Contraction Date</th>
              <th>Contact with carrier?</th>
              <th>Delete</th>
            </tr>
          </thead>
          <tbody>
            {studentList.map((val, key) => {
              return  <tr>
                <th>{val.studentname}</th>
                <th>{val.housing}</th>
                <th>{val.state}</th>
                <th>{val.major}</th>
                <th>{val.dining}</th>
                <th>{val.club}</th>
                <th>{val.gym}</th>
                <th>{dateFormat(val.covidDate)}</th>
                <th>{val.contact}</th>
                <button onClick={() => {deleteStudent(val.nuid)}}>Delete</button>
              </tr>
            })}
          </tbody>
        </table>
        <Popup trigger={buttonPopup} setTrigger={setButtonPopup}>
          <div className="form">
            <label>Northeastern Student ID </label>
            <input type="number" onChange = { (event) => {
              setNewId(event.target.value);
            }}/>
            <label>Dining Hall Preference</label>
            <select className = "Dining"  onChange = { (event) => {
              setNewDining(event.target.value);
            }}>
              <option value="">Please Select</option>
              <option value="Stetson East">Stetson East</option>
              <option value="International Village">International Village</option>
              <option value="Self cooking">Self cooking</option>
            </select> 
            <label>Club</label>
            <select className = "Club"  onChange = { (event) => {
              setNewClub(event.target.value);
            }}>
              <option value="">Please Select</option>
              <option value="Educational">Educational</option>
              <option value="Social">Social</option>
              <option value="Sports">Sports</option>
            </select>  
            <label>Gym Preference</label>
            <select className = "Gym"  onChange = { (event) => {
              setNewGym(event.target.value);
            }}>
              <option value="">Please Select</option>
              <option value="Marino">Marino</option>
              <option value="SquashBusters">SquashBusters</option>
              <option value="Do not go to gym">Do not go to gym</option>
            </select>
            <label>Have you been in contact with a carrier (type yes/no)</label>
            <select className = "Contact"  onChange = { (event) => {
              setNewContact(event.target.value);
            }}>
              <option value="">Please Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select> 
            <button onClick={updateStudent}>Submit</button>
          </div>
        </Popup>
        <StatePopup trigger={stateButton} setTrigger={setStateButton}>
          <table className="stateTable">
            <thead>
              <tr>
                <th>Name</th>
                <th>COVID cases</th>
                <th>Population</th>
              </tr>
            </thead>
            <tbody>
              {stateList.map((val, key) => {
                return  <tr>
                  <th>{val.nameofstate}</th>
                  <th>{val.totalcovidcases}</th>
                  <th>{val.population}</th>
                </tr>
              })}
            </tbody>
          </table>
        </StatePopup>
      </div>
    </div>
  );
}

export default App;
