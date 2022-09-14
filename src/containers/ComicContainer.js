import {useState, useEffect} from "react"
import ComicList from '../components/ComicList'

function ComicContainer() {
    const [comics, setComics] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        fetch("https://comic-books-database.herokuapp.com/comics")
        .then((res)=>res.json())
        .then((data)=>{
            setLoading(false)
            setComics(data)
        })
   }, [])
// //    const userListing = users.map((user)=>(
// //     <UserList
// //     key={user.id}
// //     username={user.username}
// //     email={user.email}
// //     />
// //    ))
    //     const fetchData = async () => {
    //         try {
    //             const resp = await fetch("http://localhost:9292/comics")
    //             const data = await resp.json()
    //             setComics(data)
    //             setLoading(false)
    //         } catch (error) {
    //             alert(error)
    //         }
    //     }

    //     fetchData()

    // }, []);

    if(loading) return <h1>Loading...</h1>
    

    function handleDelete(id){
        fetch(`https://comic-books-database.herokuapp.com/comics${id}`, {
            method: 'DELETE'
        })
        .then(resp => resp.json())
        .then(deleted => setComics(comics.filter(comic => comic.id !== deleted.id)))
    }

    return (
        <div>
            <ComicList comics={comics} handleDelete={handleDelete}/>
        </div>
        )
}

export default ComicContainer;