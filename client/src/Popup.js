import React from 'react';

function Popup(props) {
    return (props.trigger) ? (
        <div className = "popup">
            <button onClick = {() => props.setTrigger(false)}>Close</button>
            { props.children }
        </div>
    ) : "";
}

export default Popup;