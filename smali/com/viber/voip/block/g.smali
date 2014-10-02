.class Lcom/viber/voip/block/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/viber/voip/block/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/block/e;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/block/g;->c:Lcom/viber/voip/block/e;

    iput-object p2, p0, Lcom/viber/voip/block/g;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/viber/voip/block/g;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/block/g;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 115
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/viber/voip/block/g;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/viber/voip/block/h;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/block/h;-><init>(Lcom/viber/voip/block/g;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    return-void
.end method
