## dotfiles�g����

�����̂��߂̔��Y�^�B
���̂Ƃ���Vim�̐ݒ肾���B

#### git clone

dotfiles�ȉ����N���[���B

```
~$ git clone https://github.com/honeniq/dotfiles/ ~/dotfiles/
```

#### �����N�쐬

```
~$ ln -s ~/dotfiles/.vimrc ~/.vimrc
~$ ln -s ~/dotfiles/.gvimrc ~/.gvimrc
~$ ln -s ~/dotfiles/.vim ~/.vim
```

#### NeoBundle

NeoBundle�𓱓�����B

```
~$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

#### �v���O�C���̃C���X�g�[��

Vim�𗧂��グ��ƃv���O�C���̃C���X�g�[�����n�܂�B

```
~$ vim
Not installed bundles:  ['vim-colors-solarized', 'nerdtree', 'vim-submode', 'lightline.vim', 'unite.vim']
Install bundles now?
(y)es, [N]o: y
```
