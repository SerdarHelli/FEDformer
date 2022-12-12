export CUDA_VISIBLE_DEVICES=1

#cd ..

for model in FEDformer Autoformer Informer Transformer
do

result_path="/content/drive/MyDrive/Serdar/CDR_Results/$result_path _Mul"

# ETT m1
python -u run.py \
  --is_training 1 --model=$model  --task_id=Internet --data=custom --root_path="/content/" --data_path="df.csv" --features=M \
              --c_out=4 --enc_in=4 --dec_in=4 --seq_len=36 --label_len=18 --pred_len=36 \
              --itr=1  --e_layers=2 --d_layers=1   --factor=3 --batch_size=8 --result_path=$result_path\



done

