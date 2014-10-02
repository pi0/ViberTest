.class Lcom/viber/voip/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/AddFriendPreview;


# direct methods
.method constructor <init>(Lcom/viber/voip/AddFriendPreview;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/viber/voip/j;->b:Lcom/viber/voip/AddFriendPreview;

    iput-object p2, p0, Lcom/viber/voip/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lcom/viber/voip/j;->b:Lcom/viber/voip/AddFriendPreview;

    iget-object v1, p0, Lcom/viber/voip/j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/bp;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 563
    return-void
.end method
