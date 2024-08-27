import { useState, useEffect } from 'react';

function Message() {
    const [message, setMessage] = useState('Boa tarde');
    const messages = ['Boa tarde', 'Boaaaaaaa', 'Boa Noite'];

    useEffect(() => {
        const interval = setInterval(() => {
            setMessage(prevMessage => {
                const currentIndex = messages.indexOf(prevMessage);
                const nextIndex = (currentIndex + 1) % messages.length;
                return messages[nextIndex];
            });
        }, 1000); // 1000 ms = 1 segundo

        return () => clearInterval(interval); // Limpa o intervalo quando o componente desmonta
    }, []);

    return (
        <div>
            <h3>{message}</h3>
        </div>
    );
}

export default Message;
