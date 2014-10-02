.class Lcom/viber/voip/contacts/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/a/o;

.field final synthetic b:Lcom/viber/voip/contacts/a/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/a/p;Lcom/viber/voip/contacts/a/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/viber/voip/contacts/a/q;->b:Lcom/viber/voip/contacts/a/p;

    iput-object p2, p0, Lcom/viber/voip/contacts/a/q;->a:Lcom/viber/voip/contacts/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/viber/voip/contacts/a/q;->b:Lcom/viber/voip/contacts/a/p;

    iget-object v1, p0, Lcom/viber/voip/contacts/a/q;->a:Lcom/viber/voip/contacts/a/o;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/a/p;->setTag(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/contacts/a/q;->b:Lcom/viber/voip/contacts/a/p;

    iget-object v0, v0, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    iget-object v0, v0, Lcom/viber/voip/contacts/a/n;->c:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 217
    const/4 v0, 0x1

    return v0
.end method
