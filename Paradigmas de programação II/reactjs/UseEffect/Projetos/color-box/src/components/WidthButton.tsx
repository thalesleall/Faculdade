import { useEffect, useState } from 'react';
   function WidthButton({ width }: { width: number }) {
       const [size, setSize] = useState<number>(80);
       useEffect(() => {
            setSize(width);
       }, [width]);
       return (
           <div>
               <button style={{ width: `${size}px`, textAlign: 'center', color: 'black', margin: '10px' }}> OK </button>

           </div>
           );
        }
        export default WidthButton;