import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import AddCar from './pages/AddCar';
import EditCar from './pages/EditCar';

function App() {
    return (
        <Router>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/add" element={<AddCar />} />
                <Route path="/edit/:id" element={<EditCar />} />
            </Routes>
        </Router>
    );
}

export default App;
