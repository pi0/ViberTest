.class public Lcom/viber/voip/messages/ui/chathead/ax;
.super Lcom/viber/voip/messages/ui/chathead/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/b;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ax;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setImageResource(I)V

    .line 12
    return-void
.end method
