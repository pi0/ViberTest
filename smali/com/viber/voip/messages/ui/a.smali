.class public abstract Lcom/viber/voip/messages/ui/a;
.super Lcom/viber/voip/ui/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/viber/voip/messages/ui/dk;
.implements Lcom/viber/voip/messages/ui/dn;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:J

.field private c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/viber/voip/messages/ui/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/h;-><init>(I)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/a;)Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v0, Lcom/viber/voip/messages/ui/c;

    invoke-direct {v0, p0, p2}, Lcom/viber/voip/messages/ui/c;-><init>(Lcom/viber/voip/messages/ui/a;Z)V

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(I)V

    .line 173
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 174
    return-void
.end method

.method private a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Landroid/os/Bundle;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v2

    .line 182
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    if-nez v2, :cond_0

    iget v2, p1, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a:I

    if-ne v2, v0, :cond_0

    .line 192
    :goto_0
    return v0

    .line 186
    :cond_0
    iget v0, p1, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iput v1, p1, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a:I

    .line 188
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->b()V

    .line 189
    const-string/jumbo v0, "conversation_search_result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 192
    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;-><init>(Lcom/viber/voip/messages/ui/dk;Lcom/viber/voip/messages/ui/dn;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)V

    return-object v0
.end method

.method public abstract a(J)V
.end method

.method public a(JZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    .line 215
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    .line 216
    cmp-long v0, p1, v5

    if-nez v0, :cond_3

    .line 217
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    .line 219
    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/adapters/a/a;Z)V

    .line 224
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/a;->d(I)V

    .line 226
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->w()V

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/ui/a;->a(J)V

    goto :goto_2

    .line 214
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 233
    :cond_4
    if-eqz p3, :cond_0

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    .line 235
    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/adapters/a/a;Z)V

    .line 237
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/a;->d(I)V

    .line 238
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->w()V

    goto :goto_0
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0, p3}, Lcom/viber/voip/messages/ui/a;->d(I)V

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 119
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    .line 120
    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v2

    .line 123
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v1, Lcom/viber/voip/HomeActivity;

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 126
    check-cast v1, Lcom/viber/voip/HomeActivity;

    .line 127
    iget-wide v3, p0, Lcom/viber/voip/messages/ui/a;->b:J

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 128
    if-eqz p4, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->h()V

    goto :goto_0

    .line 131
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->g()V

    .line 135
    :cond_3
    if-nez v2, :cond_5

    .line 136
    invoke-virtual {p0, v0, p4}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/adapters/a/a;Z)V

    .line 138
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->l()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 142
    new-instance v0, Lcom/viber/voip/messages/ui/b;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/b;-><init>(Lcom/viber/voip/messages/ui/a;Landroid/widget/ListView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 151
    :cond_5
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-super/range {v0 .. v5}, Lcom/viber/voip/ui/h;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public abstract a(Lcom/viber/voip/messages/adapters/a/a;Z)V
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/a;->b:J

    .line 158
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/a;->a(JZ)V

    .line 160
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/ui/dl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->n()V

    .line 246
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/ai;)V

    .line 247
    return-void
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    if-eq v2, p1, :cond_1

    .line 60
    iget-wide v0, p0, Lcom/viber/voip/messages/ui/a;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/a;->a(JZ)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public b(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/ui/dl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->n()V

    .line 253
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->q:Lcom/viber/voip/a/ad;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/ad;->a(J)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 254
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    .line 255
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public abstract l()Z
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    return-object v0
.end method

.method public onActivityBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/f/j;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    const/4 v0, 0x1

    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->r()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_2

    .line 98
    const-string/jumbo v0, "mode_manager"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Landroid/os/Bundle;)Z

    move-result v1

    .line 100
    const-string/jumbo v2, "last_selected_conversation"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/messages/ui/a;->b:J

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Z)V

    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 114
    :cond_1
    return-void

    .line 101
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "open_conversation_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/messages/ui/a;->b:J

    goto :goto_0
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->q()Z

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->c()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/actionbarsherlock/view/Menu;Z)V

    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getNewPackagesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c(I)V

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/ui/h;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 271
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 335
    iget-object v2, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/adapters/a/a;

    invoke-virtual {v2, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/adapters/a/a;)Lcom/viber/voip/messages/ui/dl;

    move-result-object v1

    .line 336
    iget-object v2, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(JLcom/viber/voip/messages/ui/dl;)Z

    move-result v0

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 342
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 323
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    .line 324
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/adapters/a/a;)Lcom/viber/voip/messages/ui/dl;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(JLcom/viber/voip/messages/ui/dl;)Z

    .line 327
    :cond_0
    return-void
.end method

.method public onNewStickerPackageCountChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c(I)V

    .line 262
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 275
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Z)V

    .line 278
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x7f07043b
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 348
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string/jumbo v0, "mode_manager"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->g()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 350
    const-string/jumbo v0, "last_selected_conversation"

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/a;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 352
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020004

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->s()V

    .line 315
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic p()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/viber/voip/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
