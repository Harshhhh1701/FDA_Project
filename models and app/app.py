import numpy as np
import pickle
from flask import Flask, request, render_template

app = Flask(__name__)

# prediction function


def ValuePredictor(to_predict_list):
    #print("to-predict", to_predict_list)
    to_predict = np.array(to_predict_list).reshape(1, 10)
    loaded_model = pickle.load(open("final_model.pkl", "rb"))
    result = loaded_model.predict(to_predict)
    return result[0]


@app.route('/', methods=['GET'])
def index():
    # Main page
    return render_template('base.html')


@app.route('/result', methods=['GET', 'POST'])
def result():
    if request.method == 'POST':
        to_predict_list = request.form.to_dict()
        print("to-predict", to_predict_list)
        to_predict_list = list(to_predict_list.values())
        to_predict_list = list(map(float, to_predict_list))
        result = ValuePredictor(to_predict_list)
        if int(result) == 1:
            prediction = 'You have chances of stroke'
        else:
            prediction = 'You dont have chances of stroke'
        return render_template("result.html", prediction=prediction)


if __name__ == '__main__':
    app.run(debug=True, threaded=False)
