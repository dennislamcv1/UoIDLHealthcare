from sklearn.datasets import load_svmlight_file

# PLEASE USE THE GIVEN FUNCTION NAME, DO NOT CHANGE IT

def bag_to_svmlight(input):
    return ' '.join(( "%d:%f" % (fid, float(fvalue)) for fid, fvalue in input))

#input: features and label stored in the svmlight_file
#output: X_train, Y_train
#Note: If the number of features exceed 1473, please use the appropriate number
def get_data_from_svmlight(svmlight_file):
    data_train = load_svmlight_file(svmlight_file,n_features=1473)
    X_train = data_train[0]
    Y_train = data_train[1]
    return X_train, Y_train