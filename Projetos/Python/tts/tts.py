import pyttsx3
import speech_recognition as sr
import textwrap
import os
import google.generativeai as genai
from IPython.display import Markdown

def ouvir_microfone():
    frase = ""
    microfone = sr.Recognizer()
    with sr.Microphone() as source:
        microfone.adjust_for_ambient_noise(source)
        print("Diga alguma coisa: ")
        audio = microfone.listen(source)
    try:
        frase = microfone.recognize_google(audio, language='pt-BR')
        print("Você disse: " + frase)
    except sr.UnknownValueError:
        print("Não entendi")

    return frase

def to_markdown(text):
    text = text.replace('•', '  *')
    return Markdown(textwrap.indent(text, '> ', predicate=lambda _: True))

os.getenv('AIzaSyBJf3BQQ5P-DIXgFGlbc66PoNMvDutApxo')
genai.configure(api_key='AIzaSyBJf3BQQ5P-DIXgFGlbc66PoNMvDutApxo')

model = genai.GenerativeModel('gemini-pro')

def speak(text):
    engine = pyttsx3.init()
    engine.setProperty("voice", "brazil")
    engine.setProperty('rate', 150)
    engine.setProperty('volume', 0.9)
    engine.say(text)
    engine.runAndWait()

def get_ai(query):
    response = model.generate_content(query, stream=True)
    response.resolve()
    return response.text



def formata(texto):
    vet = [char for char in texto]
    i = 0
    for i, item in reversed(list(enumerate(vet))):
        if item == "*" or item == "**":
            vet.pop(i)

    resposta = ''.join(vet)
    return resposta


resposta = ""
pergunta = ""

while pergunta.lower() != "sair":
    pergunta = ouvir_microfone()
    resposta = get_ai(pergunta)
    resposta = formata(resposta)
    if __name__ == "__main__":
        print(resposta)
        speak(resposta)


print("Você escolheu sair")
speak("Você escolheu sair")
