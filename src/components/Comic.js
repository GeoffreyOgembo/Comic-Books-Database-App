function Comic({ comic, handleDelete }) {


    return (
        <div>
             <div className ="container">
             <div className ="card">
             <div className ="card-body">
             <h3>Title: {comic.title}</h3>
           <h5>Publisher: {comic.publisher}</h5>
           <h5>Number of Issues: {comic.issues}</h5>
           <h5>Published: {comic.release_date}</h5>
           <h5>Writer: {comic.writer}</h5>
           <h5>Artist: {comic.artist}</h5>
           <h5>Synopsis:</h5>
           <h5>{comic.synopsis}</h5>
             </div>
          </div>
     </div>
           
           <button onClick={() => handleDelete(comic.id)}>Delete</button>
           <br />
        </div>
    )
}

export default Comic;