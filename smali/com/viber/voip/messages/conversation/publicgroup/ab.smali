.class Lcom/viber/voip/messages/conversation/publicgroup/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ab;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ab;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V

    .line 214
    return-void
.end method
