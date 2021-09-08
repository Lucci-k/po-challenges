import './App.css';
import { data } from './app.data';
import { useSelector, useDispatch } from 'react-redux'
import { updateDetailedView } from './redux/app.actions';

function App() {
  const view = useSelector(state => state)
  const dispatch = useDispatch()
  return (
  <div className="App">
      <div className='item-list'>
        <ul>
          {
            Object.values(data).map(item => 
            <li 
              key={item.header} 
              onClick={()=>dispatch(updateDetailedView(item))}>
              {item.header}
            </li>)
          }
      </ul>
    </div><div className='detailed-view'>
        <h2>{view.header}</h2>
        <p>{view.desc}</p>
      </div>
    </div>
  );
}

export default App;
