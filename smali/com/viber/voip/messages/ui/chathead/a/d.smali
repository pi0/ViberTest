.class Lcom/viber/voip/messages/ui/chathead/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/d;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/d;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/d;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->e(Lcom/viber/voip/messages/ui/chathead/a/b;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(Landroid/view/View;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
