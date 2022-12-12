export CUDA_VISIBLE_DEVICES=0


python -u run.py \
--is_training 1 --model=FEDformer --version=Fourier --task_id=Internet --data=custom --root_path="/content/" --data_path="df.csv" --features=S \
            --c_out=1--enc_in=1 --dec_in=1 --seq_len=36 --label_len=18 --pred_len=36 \
            --itr=1  --e_layers=2 --d_layers=1   --factor=3 --batch_size=8 \
            --result_path="/content/drive/MyDrive/Serdar/CDR_Results/FEDFormerFourier_Uni"\


python -u run.py \
--is_training 1 --model=FEDformer --version=Wavelets --task_id=Internet --data=custom --root_path="/content/" --data_path="df.csv" --features=S \
            --c_out=1 --enc_in=1 --dec_in=1 --seq_len=36 --label_len=18 --pred_len=36 \
            --itr=1  --e_layers=2 --d_layers=1   --factor=3 --batch_size=8 \
            --result_path="/content/drive/MyDrive/Serdar/CDR_Results/FEDFormerWavelet_Uni"\
python -u run.py \
--is_training 1 --model=Autoformer --version=Fourier --task_id=Internet --data=custom --root_path="/content/" --data_path="df.csv" --features=S \
            --c_out=1 --enc_in=1 --dec_in=1 --seq_len=36 --label_len=18 --pred_len=36 \
            --itr=1  --e_layers=2 --d_layers=1   --factor=3 --batch_size=8 \
            --result_path="/content/drive/MyDrive/Serdar/CDR_Results/Autoformer_Uni"\
    
python -u run.py \
--is_training 1 --model=Informer --version=Fourier --task_id=Internet --data=custom --root_path="/content/" --data_path="df.csv" --features=S \
            --c_out=1 --enc_in=1 --dec_in=1 --seq_len=36 --label_len=18 --pred_len=36 \
            --itr=1  --e_layers=2 --d_layers=1   --factor=3 --batch_size=8 \
            --result_path="/content/drive/MyDrive/Serdar/CDR_Results/Informer_Uni"\

python -u run.py \
--is_training 1 --model=Transformer --version=Fourier --task_id=Internet --data=custom --root_path="/content/" --data_path="df.csv" --features=S \
            --c_out=1 --enc_in=1 --dec_in=1 --seq_len=36 --label_len=18 --pred_len=36 \
            --itr=1  --e_layers=2 --d_layers=1   --factor=3 --batch_size=8 \
            --result_path="/content/drive/MyDrive/Serdar/CDR_Results/Transformer_Uni"\

