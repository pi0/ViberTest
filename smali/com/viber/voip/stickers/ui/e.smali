.class Lcom/viber/voip/stickers/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/o;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/ui/c;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/stickers/ui/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/ui/d;Lcom/viber/voip/stickers/ui/c;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/viber/voip/stickers/ui/e;->c:Lcom/viber/voip/stickers/ui/d;

    iput-object p2, p0, Lcom/viber/voip/stickers/ui/e;->a:Lcom/viber/voip/stickers/ui/c;

    iput-boolean p3, p0, Lcom/viber/voip/stickers/ui/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;Ljava/lang/Object;Lcom/viber/voip/stickers/h;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/e;->c:Lcom/viber/voip/stickers/ui/d;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/d;->c(Lcom/viber/voip/stickers/ui/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/e;->c:Lcom/viber/voip/stickers/ui/d;

    invoke-static {v0}, Lcom/viber/voip/stickers/ui/d;->b(Lcom/viber/voip/stickers/ui/d;)Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    if-ne p1, v0, :cond_3

    move v0, v1

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/stickers/ui/e;->a:Lcom/viber/voip/stickers/ui/c;

    if-eqz v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/viber/voip/stickers/ui/e;->a:Lcom/viber/voip/stickers/ui/c;

    invoke-interface {v1, v0}, Lcom/viber/voip/stickers/ui/c;->a(Z)Z

    move-result v1

    .line 138
    :cond_0
    if-eqz v0, :cond_2

    .line 139
    if-eqz v1, :cond_1

    .line 140
    iget-boolean v0, p0, Lcom/viber/voip/stickers/ui/e;->b:Z

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/e;->c:Lcom/viber/voip/stickers/ui/d;

    invoke-static {v0, p3}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/ui/d;Lcom/viber/voip/stickers/h;)V

    .line 146
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/e;->c:Lcom/viber/voip/stickers/ui/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/ui/d;->a(Lcom/viber/voip/stickers/ui/d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    return-void

    .line 132
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/e;->c:Lcom/viber/voip/stickers/ui/d;

    invoke-static {v0, p3}, Lcom/viber/voip/stickers/ui/d;->b(Lcom/viber/voip/stickers/ui/d;Lcom/viber/voip/stickers/h;)V

    goto :goto_1
.end method
