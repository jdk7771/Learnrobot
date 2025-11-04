# import numpy 
# import torch

# class Get_accuracy():
#     def __init__(self):
#         self.label_pre = []
#         self.label_real = []

#     def update(self,y_hat,y):
#         if torch.is_tensor(y_hat):
#             y_hat = y_hat.detach().cpu().numpy()
#         if torch.is_tensor(y):
#             y = y.detach().cpu().numpy()
#         self.label_pre.append(y_hat)
#         self.label_real.append(y)

#     def get_acc(self):
#         if(self.label_real == []):
#             print("没有数据无准确率")
#             return 0
#         cmd = self.label_pre == self.label_real
#         return cmd.sum()/len(self.label_real)
    
#     def clear(self):
#         self.label_pre = []
#         self.label_real = []

import torch

class Get_accuracy():
    def __init__(self):
        self.correct = 0
        self.total = 0

    def update(self, y_hat, y):
        # 完全使用PyTorch，避免numpy转换问题
        self.correct += (y_hat == y).sum().item()
        self.total += y.shape[0]

    def get_acc(self):
        if self.total == 0:
            print("没有数据无准确率")
            return 0
        print(f"总数为{self.total}")
        return self.correct / self.total
    
    def clear(self):
        self.correct = 0
        self.total = 0
