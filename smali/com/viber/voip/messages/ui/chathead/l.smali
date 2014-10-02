.class Lcom/viber/voip/messages/ui/chathead/l;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1222
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->D(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->E(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 1224
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->E(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 1225
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;)V

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->F(Lcom/viber/voip/messages/ui/chathead/d;)V

    .line 1229
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/l;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->G(Lcom/viber/voip/messages/ui/chathead/d;)V

    goto :goto_0
.end method
