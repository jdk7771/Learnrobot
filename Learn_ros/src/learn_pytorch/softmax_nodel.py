from image_load import get_mnist_label, show_mnist_image
from torchvision import transforms,datasets
from torch import utils
from torch.utils import data
import torchvision
import torch



def get_iter_numswork():
    return 4


def get_iter(batchsize):
    trans = transforms.ToTensor()

    #？？？？？？？？？？？？？这个如何直接读取
    mnist_train = torchvision.datasets.FashionMNIST(root = "../data", transform=trans, train = True, download=True)
    mnist_test = torchvision.datasets.FashionMNIST(root = "../data", transform=trans, train = False, download=True)
    return  data.DataLoader(mnist_train , batch_size=batchsize, shuffle=True, num_workers=get_iter_numswork())

def sgd(w, lr, batch):
    with torch.no_grad():
        for wsin in w:
            wsin-=wsin.grad*lr/batch
            wsin.grad.zero_()

def softmax(result):
    result = torch.exp(result)
    result = result/torch.sum(result, dim=1, keepdim=True)
    return result

"""feature:batchsize*feature
    w:feature*10
    b:10*1
    return B*10
"""
def line(feature, w, b):
    result = torch.matmul(feature.flatten(1),w)+b
    return result


def net(feature, w, b):
    result = line(feature, w, b)
    return softmax(result)

def cross_entropy(y_hat, y):
    return -torch.log(y_hat[range(len(y)), y ])

def get_accuracy(y_hat, y):
    y_hat, y_ind = y_hat.max(dim =1) 
    cmd = y_ind == y
    return cmd.sum()/len(y)

def train():

    batchsize = 64
    nums_chara = 28*28
    numepoch = 100

    w = torch.normal(0, 0.01, size=(nums_chara, 10), requires_grad=True)
    b = torch.zeros((10), requires_grad=True)

    for epoch in range(numepoch):
        for feartures,labels in get_iter(batchsize):
            yhat = net(feartures, w, b)
            loss = cross_entropy(yhat, labels)
            loss.sum().backward()
            sgd((w,b),lr=0.001,batch=batchsize)
        print(f"第{epoch}轮准确率为{get_accuracy(yhat, labels)}")
train()
        





