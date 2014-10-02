.class Lcom/viber/voip/messages/ui/media/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ae;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ae;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->c(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V

    .line 117
    return-void
.end method
