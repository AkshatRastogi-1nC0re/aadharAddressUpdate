#include<iostream>
using namespace std;
struct nod
{
   int info;
   struct nod *l;
   struct nod *r;
}*r;
class BST
{
   public:
       void firstCase(nod *,nod *);
       void secondCase(nod *,nod *);
       void thirdCase(nod *,nod *);
       void dhoondna(nod *,int);
       void inorder(nod *);
       void postorder(nod *);
       void show(nod *, int);
       void dhoond(int, nod**,nod**);
       void ins(nod *,nod *);
       void del(int);
       void preorder(nod *);
       BST()
       {
          r = NULL;
       }
};
void BST::show(nod *ptr, int level)
{
   int i;
   if (ptr != NULL)
   {
      show(ptr->l, level+1);
      cout<<ptr->info<<" ";
      show(ptr->r, level+1);
   }
}
void BST::dhoond(int i, nod **par, nod **loc)
{
   nod *ptr, *ptrsave;
   if (r == NULL)
   {
      *loc = NULL;
      *par = NULL;
      return;
   }
   if (i == r->info)
   {
      *loc = r;
      *par = NULL;
      return;
   }
   if (i < r->info)
   ptr = r->l;
   else
   ptr = r->r;
   ptrsave = r;
   while (ptr != NULL)
   {
      if (i == ptr->info)
      {
         *loc = ptr;
         *par = ptrsave;
         return;
      }
      ptrsave = ptr;
      if (i < ptr->info)
      ptr = ptr->l;
      else
      ptr = ptr->r;
   }
   *loc = NULL;
   *par = ptrsave;
}
void BST::dhoondna(nod *root, int data)
{
   int depth = 0;
   nod *temp = new nod;
   temp = root;
   while(temp != NULL)
   {
      depth++;
      if(temp->info == data)
      {
         cout<<"Element "<<data<<" is Found\n"<<endl;
         return;
      }
      else if(temp->info > data)
      temp = temp->l;
      else
      temp = temp->r;
   }
   cout<<"Element is not found"<<endl;
   return;
}
void BST::ins(nod *tree, nod *newnode)
{
   if (r == NULL)
   {
      r = new nod;
      r->info = newnode->info;
      r->l= NULL;
      r->r= NULL;
      cout<<"Elements in BST are:";
      return;
   }
   if (tree->info == newnode->info)
   {
       cout<<"Elements in BST are:";
       return;
   }
   if (tree->info > newnode->info)
   {
      if (tree->l != NULL)
      {
         ins(tree->l, newnode);
         cout<<"Elements in BST are:";
      }
      else
      {
         tree->l= newnode;
         (tree->l)->l = NULL;
         (tree->l)->r= NULL;
         cout<<"Elements in BST are:";
         return;
      }
   }
   else
   {
      if (tree->r != NULL)
      {
         ins(tree->r, newnode);
         cout<<"Elements in BST are:";
      }
      else
      {
         tree->r = newnode;
         (tree->r)->l= NULL;
         (tree->r)->r = NULL;
         cout<<"Elements in BST are:";
         return;
      }
   }
}
void BST::del(int i)
{
   nod *par, *loc;
   if (r == NULL)
   {
      cout<<"Tree empty"<<endl;
      return;
   }
   dhoond(i, &par, &loc);
   if (loc == NULL)
   {
      cout<<"Item not present in tree"<<endl;
      return;
   }
   if (loc->l == NULL && loc->r == NULL)
   {
      firstCase(par, loc);
      cout<<"BST after deletion:";
      show(r,1);
      cout<<endl;
   }
   if (loc->l!= NULL && loc->r == NULL)
   {
      secondCase(par, loc);
      cout<<"BST after deletion:";
      show(r,1);
      cout<<endl;
   }
   if (loc->l== NULL && loc->r != NULL)
   {
      secondCase(par, loc);
      cout<<"BST after deletion:";
      show(r,1);
      cout<<endl;
   }
   if (loc->l != NULL && loc->r != NULL)
   {
      thirdCase(par, loc);
      cout<<"BST after deletion:";
      show(r,1);
      cout<<endl;
   }
   free(loc);
}
void BST::firstCase(nod *par, nod *loc )
{
   if (par == NULL)
{
   r= NULL;
}
else
{
   if (loc == par->l)
   par->l = NULL;
   else
   par->r = NULL;
   }
}
void BST::secondCase(nod *par, nod *loc)
{
   nod *child;
   if (loc->l!= NULL)
      child = loc->l;
   else
      child = loc->r;
   if (par == NULL)
   {
      r = child;
   }
   else
   {
      if (loc == par->l)
         par->l = child;
      else
         par->r = child;
   }
}
void BST::thirdCase(nod *par, nod *loc)
{
   nod *ptr, *ptrsave, *suc, *parsuc;
   ptrsave = loc;
   ptr = loc->r;
   while (ptr->l!= NULL)
   {
      ptrsave = ptr;
      ptr = ptr->l;
   }
   suc = ptr;
   parsuc = ptrsave;
   if (suc->l == NULL && suc->r == NULL)
      firstCase(parsuc, suc);
   else
      secondCase(parsuc, suc);
   if (par == NULL)
   {
      r = suc;
   }
   else
   {
      if (loc == par->l)
         par->l = suc;
      else
         par->r= suc;
   }
   suc->l = loc->l;
   suc->r= loc->r;
}
void BST::preorder(nod *ptr)
{
   if (r == NULL)
   {
      cout<<"Tree is empty"<<endl;
      return;
   }
   if (ptr != NULL)
   {
      cout<<ptr->info<<" ";
      preorder(ptr->l);
      preorder(ptr->r);
   }
}
void BST::inorder(nod *ptr)
{
   if (r == NULL)
   {
      cout<<"Tree is empty"<<endl;
      return;
   }
   if (ptr != NULL)
   {
      inorder(ptr->l);
      cout<<ptr->info<<" ";
      inorder(ptr->r);
   }
}
void BST::postorder(nod *ptr)
{
   if (r == NULL)
   {
      cout<<"Tree is empty"<<endl;
      return;
   }
   if (ptr != NULL)
   {
      postorder(ptr->l);
      postorder(ptr->r);
      cout<<ptr->info<<" ";
   }
}
int main()
{
   int c, n,item;
   BST bst;
   nod *t;
   while (1)
   {
      cout<<"Options: 1.ins 2.Delete 3.Inorder 4.Postorder 5.dhoondna 6.Exit"<<endl;
      cout<<"Enter choice:"<<endl;
      cin>>c;
      switch(c)
      {
         case 1:
            t = new nod;
            cout<<"Element to be ins:"<<endl;
            cin>>t->info;
            bst.ins(r,t);
            bst.show(r,1);
            cout<<endl;
            break;
         case 2:
            if (r == NULL)
            {
               cout<<"Tree is empty, nothing to delete"<<endl;
               continue;
            }
            cout<<"Element to be delete:"<<endl;
            cin>>n;
            bst.del(n);
            break;
         case 3:
            cout<<"BST Inorder Travesals is:";
            bst.inorder(r);
            cout<<endl;
            break;
         case 4:
            cout<<"BST Postorder Traversals is:";
            bst.postorder(r);
            cout<<endl;
            break;
         case 5:
            cout<<"Element to be dhoondna:";
            cin>>item;
            bst.dhoondna(r,item);
            break;
         case 6:
            cout<<"Program Exit:";
            exit(1);
         default:
            cout<<"Wrong choice"<<endl;
      }
   }
}