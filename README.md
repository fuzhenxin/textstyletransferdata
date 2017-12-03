# Text Style Transfer Data



- The classifier in Evaluation is based on keras:
 https://github.com/fchollet/keras/blob/master/examples/imdb_bidirectional_lstm.py
- The data is available at https://github.com/fuzhenxin/textstyletransferdata
- If there is any problem, please contact Zhenxin Fu (fuzhenxin95@gmail.com)



## Evaluation


Evaluation tool is in _eval_

#### Preprocess
- put glove embedding in eval/word_emb.
- Please follow ```run1.sh``` to put test data.
- The results of converting test data to style 0 is put in style0.txt and style 1 respectively.
- test1 test2 test3 for different mode (autoencoder, style embedding. multi decoder).


#### Transfer Strength (Classifier)
```Usage
$ python classifier data        # process data of classifier
$ python classifier train       # train classifier
$ python classifier test test1  # test classifier
                                # test1 is the test result dir
                                # results in test1/embedding/style0_classification.txt ...

```

#### Content reservation


```CP
$cd eval
$python emb_test.py test1   # test1 is the test result dir
                           # results in test1/embedding/style0_semantics.txt ...
```


Finally, run python ```eval.py``` to show results collection.

Example:
```Example
dir_name model_type      transfer_strength content_reservation mixture
================================================================================
test1     embedding8 		0.267 		0.943880306299 	0.208126303212
test1 	embedding4 		0.485 		0.915346000157 	0.317023657029
test1 	embedding 		0.593 		0.896598659955 	0.356930373024
.................
```


## Acknowledgment 
Thanks for Fangfang Zhang and Yixin Zhang for helping compose data.




