.class Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity$1;->this$0:Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity$1;->this$0:Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;

    invoke-virtual {v0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->finish()V

    .line 69
    return-void
.end method
