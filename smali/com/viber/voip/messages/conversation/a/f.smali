.class public Lcom/viber/voip/messages/conversation/a/f;
.super Lcom/viber/voip/messages/conversation/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private final c:Lcom/viber/voip/messages/conversation/ui/cq;

.field private final d:Lcom/viber/voip/messages/h;

.field private final e:Lcom/viber/voip/stickers/b;

.field private final f:Lcom/viber/voip/messages/ui/bb;

.field private final g:Lcom/viber/voip/messages/conversation/a/s;

.field private final h:Lcom/viber/voip/messages/conversation/a/r;

.field private final i:Lcom/viber/voip/messages/conversation/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/viber/voip/messages/conversation/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/ui/cq;Lcom/viber/voip/messages/h;Lcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0300e3

    const v2, 0x7f0300e2

    .line 52
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a;-><init>(Landroid/view/LayoutInflater;)V

    .line 54
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/f;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 55
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a/f;->c:Lcom/viber/voip/messages/conversation/ui/cq;

    .line 56
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/a/f;->d:Lcom/viber/voip/messages/h;

    .line 57
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/a/f;->e:Lcom/viber/voip/stickers/b;

    .line 58
    iput-object p6, p0, Lcom/viber/voip/messages/conversation/a/f;->f:Lcom/viber/voip/messages/ui/bb;

    .line 59
    iput-object p7, p0, Lcom/viber/voip/messages/conversation/a/f;->g:Lcom/viber/voip/messages/conversation/a/s;

    .line 60
    iput-object p8, p0, Lcom/viber/voip/messages/conversation/a/f;->h:Lcom/viber/voip/messages/conversation/a/r;

    .line 61
    iput-object p9, p0, Lcom/viber/voip/messages/conversation/a/f;->i:Lcom/viber/voip/messages/conversation/a/s;

    .line 63
    const/4 v0, 0x0

    const v1, 0x7f0300e4

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 67
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v3, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 68
    const/4 v0, 0x5

    const v1, 0x7f0300e8

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 69
    const/4 v0, 0x6

    const v1, 0x7f0300e9

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 70
    const/4 v0, 0x7

    const v1, 0x7f0300da

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 72
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 73
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v3, p0}, Lcom/viber/voip/messages/conversation/a/f;->a(IILcom/viber/voip/messages/conversation/a/c;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/f;->b(I)Lcom/viber/voip/messages/conversation/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/d;->a()Landroid/view/View;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 89
    packed-switch p2, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INVALID VIEW TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_0
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/n;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/f;->d:Lcom/viber/voip/messages/h;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/f;->h:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/f;->c:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/viber/voip/messages/conversation/a/a/a/n;-><init>(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/conversation/a/r;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    :goto_0
    return-object v0

    .line 96
    :pswitch_1
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/h;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/f;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-ne v4, p2, :cond_0

    :goto_1
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/f;->f:Lcom/viber/voip/messages/ui/bb;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/f;->h:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/a/f;->i:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/a/f;->g:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/a/f;->c:Lcom/viber/voip/messages/conversation/ui/cq;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/a/a/a/h;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;ZLcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    .line 101
    :pswitch_2
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/o;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/f;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-ne v4, p2, :cond_1

    :goto_2
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/f;->f:Lcom/viber/voip/messages/ui/bb;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/f;->h:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/a/f;->i:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/a/f;->g:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/a/f;->c:Lcom/viber/voip/messages/conversation/ui/cq;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/a/a/a/o;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;ZLcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_2

    .line 104
    :pswitch_3
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/j;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/f;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/f;->h:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/f;->i:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/f;->g:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/a/f;->c:Lcom/viber/voip/messages/conversation/ui/cq;

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/a/f;->e:Lcom/viber/voip/stickers/b;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/a/a/a/j;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;Lcom/viber/voip/stickers/b;)V

    goto :goto_0

    .line 107
    :pswitch_4
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/q;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/f;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/f;->h:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/f;->i:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/f;->g:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/a/f;->c:Lcom/viber/voip/messages/conversation/ui/cq;

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/a/f;->e:Lcom/viber/voip/stickers/b;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/a/a/a/q;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;Lcom/viber/voip/stickers/b;)V

    goto :goto_0

    .line 110
    :pswitch_5
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/f;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/f;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/f;->h:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/f;->c:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/viber/voip/messages/conversation/a/a/a/f;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
