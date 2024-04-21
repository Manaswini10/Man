#!/usr/bin/env bash
#SBATCH -n 20
#SBATCH --gres=gpu:2
#SBATCH --mem-per-cpu=2048
#SBATCH --time=4-00:00:00
#SBATCH --mail-type=END

PROJECT_DIR=/home2/$USER/Man/Chem-prop-pred

# activate conda env
eval "$(conda shell.bash hook)"
conda activate chemprop

# change cwd
cd $PROJECT_DIR


#conda activate chemprop

#python train_and_plot_cv_models.py --make_data true --train_predict true --plot_parity true --gpu false
python train_pred_polyinfo_copy.py --make_data true --train_predict true --polyinfo_datafiles true --gpu false



#python train_and_plot_cv_models.py




