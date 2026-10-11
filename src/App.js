
import './App.css';
import { createRequire } from 'module';

const require = createRequire(import.meta.url);

function App() {
  return (
    <div className="App">
     <p>Hello World</p>
    </div>
  );
}

export default App;

