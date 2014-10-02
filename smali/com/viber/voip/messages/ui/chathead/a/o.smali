.class Lcom/viber/voip/messages/ui/chathead/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/o;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/o;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/o;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Lcom/viber/voip/messages/ui/chathead/a/l;)Lcom/viber/voip/messages/ui/chathead/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->C()Lcom/viber/voip/messages/conversation/ui/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Lcom/viber/voip/messages/ui/chathead/a/l;Z)V

    .line 180
    return-void
.end method
