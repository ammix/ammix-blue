commit +message='chore: Update files':
    @jj commit -m "{{message}}"

push +message='chore: Update files':
    @echo 'Pushing changes to remote...'
    @jj commit -m "{{message}}"
    @jj bookmark set main -r@-
    @jj git push

clean:
    @jj util gc
