.class Lcom/viber/voip/messages/ui/ak;
.super Lcom/viber/voip/stickers/al;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/aj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ak;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-direct {p0}, Lcom/viber/voip/stickers/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ak;->a:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ak;->a:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/a/a;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 115
    :cond_0
    return-void
.end method

.method public c(Lcom/viber/voip/stickers/c/d;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ak;->a:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ak;->a:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/a/a;->a(Lcom/viber/voip/stickers/c/d;)V

    .line 110
    :cond_0
    return-void
.end method
