function Character({ character, handleDelete }) {


    return (
        <div>
            
           
            <div className ="container">
                <div className ="card">
                    <div className ="card-body">
                    <h3>Name: {character.name}</h3>
            <h5>Alter Ego: {character.name ? character.name : "NA"}</h5>
            <h5>Powers: {character.powers}</h5>
            
                    <h2>Description:</h2>
                        <p className ="card-text">{character.description}</p>
                    </div>
                </div>
            </div>
          
           <h3></h3>
           <button onClick={() => handleDelete(character.id)}>Delete</button>
           <br />
        </div>
    )
}

export default Character;