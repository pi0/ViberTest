.class Lcom/viber/voip/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/PhoneTypeField;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/PhoneTypeField;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/widget/n;->a:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/widget/n;->a:Lcom/viber/voip/widget/PhoneTypeField;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setInputType(I)V

    .line 90
    iget-object v0, p0, Lcom/viber/voip/widget/n;->a:Lcom/viber/voip/widget/PhoneTypeField;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setCursorVisible(Z)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method
