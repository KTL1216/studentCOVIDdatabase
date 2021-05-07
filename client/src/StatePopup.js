import React from 'react';
import './Popup.css';

function StatePopup(props) {
    return (props.trigger) ? (
        <div className = "state-popup">
            <button onClick = {() => props.setTrigger(false)}>Close</button>
            { props.children }
        </div>
    ) : "";
}

export default StatePopup;