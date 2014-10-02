.class Lcom/viber/voip/user/YouFragment$FragmentDialogs$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment$FragmentDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment$FragmentDialogs;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$FragmentDialogs$3;->this$0:Lcom/viber/voip/user/YouFragment$FragmentDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 676
    return-void
.end method
