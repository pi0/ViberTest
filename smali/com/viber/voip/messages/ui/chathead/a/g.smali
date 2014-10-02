.class Lcom/viber/voip/messages/ui/chathead/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/g;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/g;->a:Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/chathead/a/b;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
