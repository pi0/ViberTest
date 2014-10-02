.class Lcom/viber/voip/messages/ui/chathead/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/b;

.field private b:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/b;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/h;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/a/h;->b:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 295
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 299
    const-string/jumbo v0, "onMenuItemSelected"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget-object v0, p3, v2

    instance-of v0, v0, Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/h;->b:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/h;->b:Landroid/view/MenuItem$OnMenuItemClickListener;

    aget-object v0, p3, v2

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 303
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
